import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { hideProprietaireStuff } from '../components/toggle';
hideProprietaireStuff();

import { hideLocataireStuff } from '../components/toggle';
hideLocataireStuff();

import { numberOfDays } from '../components/numberOfDays';
numberOfDays();


import { displayRecapBooking } from '../components/toggleBookingView';
displayRecapBooking();

import { displayMessageBooking } from '../components/toggleBookingView';
displayMessageBooking();

import { displayReviewBooking } from '../components/toggleBookingView';
displayReviewBooking();

import { dynamicBarStatus, fillProgressbar } from '../components/progressbar';
dynamicBarStatus();
fillProgressbar();
