using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Caliburn.Micro;
using WPFControlsDemo.Models;

namespace WPFControlsDemo.ViewModels 
{
    public class ShellViewModel : Screen
    {
        public BindableCollection<PersonModel> People { get; set; }

        public ShellViewModel()
        {
            DataAccess da = new DataAccess();
            People = new BindableCollection<PersonModel>(da.GetPeople());
        }

        // Tutorial 1 - ComboBox
        private PersonModel _selectedPerson;

        public PersonModel SelectedPerson
        {
            get { return _selectedPerson; }
            set
            {
                _selectedPerson = value;
                SelectedAddress = value.PrimaryAddress;
                NotifyOfPropertyChange(() => SelectedPerson);
            }
        }
        private AddressModel _selectedAddress;

        public AddressModel SelectedAddress
        {
            get { return _selectedAddress; }
            set
            {
                _selectedAddress = value;
                SelectedPerson.PrimaryAddress = value;
                NotifyOfPropertyChange(() => SelectedAddress);
            }
        }

        // Tutorial 2 - ItemsControl
        public void AddPerson()
        {
            DataAccess dataAccess = new DataAccess();

            int maxId = 0;

            if (People.Count > 0)
            {
                maxId = People.Max(x => x.PersonId);
            }

            People.Add(dataAccess.GetPerson(maxId + 1));
        }

        public void RemovePerson()
        {
            DataAccess dataAccess = new DataAccess();

            if (People.Count == 0)
            {
                return;
            }

            PersonModel randomPerson = dataAccess.GetRandomItem<PersonModel>(People.ToArray());

            People.Remove(randomPerson);
        }

        // Tutorial 3 - DataGrid

    }
}
